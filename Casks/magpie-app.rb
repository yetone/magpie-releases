cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4592"
  sha256 arm:   "148e4dfe064fec9143f48da7a509ba95dca8a389eb1093e724b8abf5c36ce920",
         intel: "cbac4b116a8b07a535907e847594f64f8fc4f50711197588637b258a0c7dbcbc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
