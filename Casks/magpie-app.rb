cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.891"
  sha256 arm:   "59a12d9159e43d005bbd7289dab1361dcbc591ccf299e9c851b585ab1d7aaef8",
         intel: "9aee05ff70dd89e72a4353b454980bd5942993e5452960cf231af334d7e49287"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
