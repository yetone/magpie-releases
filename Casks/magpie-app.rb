cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.927"
  sha256 arm:   "521a119fb570320cae11c185544036d6d2a0193a72d89950092f84981467b279",
         intel: "036239bc8c63f825787f0e02f9cfe9a59ef5fc640fc273c55b6ccb73d4daa906"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
