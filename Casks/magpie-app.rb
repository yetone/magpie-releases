cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2364"
  sha256 arm:   "41dca417e67b01020954dd7e88648f5995c41517ac1767fd02dff0d260901cb3",
         intel: "1d8aa41eefd2f24a3e17fe2bf23db90e6e178c379ae6da8c31220da61d8b422f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
