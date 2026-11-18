cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4466"
  sha256 arm:   "aa55be76347f4dad12569f6a0fee4b07249dff320557d9654ff46e3c9b8aff8a",
         intel: "1f820baa967f0ff7144b5ee43263037e1f8a16c906025b92e0a55222b61e314c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
