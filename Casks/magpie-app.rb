cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1136"
  sha256 arm:   "e1ffadf2bbd8d5f9f60e53ca814516f4475e3a655eb8c0c9e951ba2d68996274",
         intel: "9e811a6538fc387bf60a1c1a1151ea49c4e3c8f00aa1721fbc0e3474abcaa534"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
