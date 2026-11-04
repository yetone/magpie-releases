cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2999"
  sha256 arm:   "ca6f88b710437fa9dca1d081459a70773259ccae3652681d18d7aff0e74ef733",
         intel: "41b5110102e1978ed42e433143cf7f036e6af3640f8d9330e4950bc521de3b9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
