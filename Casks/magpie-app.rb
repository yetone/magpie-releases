cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4198"
  sha256 arm:   "b81fcf34207bbcc66a93e29c775d51b65c1b0574c7533f3efaac48501c8d2d42",
         intel: "6500b406e9029fa7bb7610588a776905d8407bf663c4dbeec0f2a5ad93e46d62"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
