cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3802"
  sha256 arm:   "3385b226f0b0eba7840a747eadd3fbfb317cf0fa2c810be7eab6bdd47badaf05",
         intel: "93c05508cccd9e165404f592f9ebc203797d86fb01c213396a20a6186739d271"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
