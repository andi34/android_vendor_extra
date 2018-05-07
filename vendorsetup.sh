while read -r file; do
    project="$(dirname ${file} | sed 's|vendor/extra/patch/||g')"
    bugid="$(grep '^Bug: ' ${file} | sed -E 's|^\s*Bug: ([0-9]+).*$|\1|g')"
    if [ "$(git -C ${project} log --grep "Bug: ${bugid}")" ]; then
        echo "${project}: b/${bugid} is already patched"
        continue
    fi
    git -C "${project}" am -q "$(pwd)/${file}" || git -C "${project}" am --abort
done <<< "$(find vendor/extra/patch -type f)"
unset project
unset bugid
