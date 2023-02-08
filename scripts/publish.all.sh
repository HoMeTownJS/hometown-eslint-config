
echo "start..."
echo "updateing version..."
pnpm run update-version
echo "publishing pkg..."
pnpm run publish-pkg-base && pnpm run publish-pkg-default && pnpm run publish-pkg-ts && pnpm run publish-pkg-vue2 && pnpm run publish-pkg-vue3 &&
echo "success!!!"
echo