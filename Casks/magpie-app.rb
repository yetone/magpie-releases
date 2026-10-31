cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2309"
  sha256 arm:   "d429d912bb50a82a543076c5ebf9262f04e046bc7959322f1e85f9cae5e75d52",
         intel: "c3ad92475c4c9a1007d4713dc312e9e9dac23a1b764b7995150bfaa9f39c1e57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
