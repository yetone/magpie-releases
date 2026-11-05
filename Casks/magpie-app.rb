cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3027"
  sha256 arm:   "051d328c82e08f3b8e2ef9c05444f2aeb6d3b2315cc9d2a5a713609863a0b76e",
         intel: "d5fc047c6e817aaa1598ae1ac5bd48b46e24607888acd26ae14a3cfd24c06753"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
