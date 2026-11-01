cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2632"
  sha256 arm:   "cbd83a5e88c3e7b0dc649b0ab2b647b4b88cea7e57d79dcc4fc3469a230203a7",
         intel: "279f8ca3e93f676d7dcaa147546f0221a06efd718be0ac7f450e45efe180e688"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
