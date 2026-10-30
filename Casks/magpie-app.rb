cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2161"
  sha256 arm:   "eef694e37f096f580c3599ac7775d857d23bddfecad0bcfddf38c8d8bb7edd86",
         intel: "104b34fd5132a4dabf49384acf9e18b40fde73a59557b530f079823a3a3d1d2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
