cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2809"
  sha256 arm:   "e75036384ef55caac7efc813c88258f4aed4c79b96def599ed6f0dc0c3b5555d",
         intel: "55a259da2491cabd50b06ba1207b2885be6b22ecb5127da8d36d28fc5816974b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
