cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4120"
  sha256 arm:   "4edcb972456a884db2dd749ac36a47899e96772ffe4a8d9a929a108914c03d20",
         intel: "faa5ff30a4131996c8f85778f78ed03799073d12126350b39cbd185ae03c90cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
