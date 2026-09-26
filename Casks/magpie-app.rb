cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.128"
  sha256 arm:   "1d6e73b8e43fb2dcb80133c822fc32f0df02fd346b7016970a24aae5f4716b47",
         intel: "31a909e17fb3e7e6f948d5d8cc1e7e6208e33a6bbe5e200ea7a2aecdcb11440d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
