cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2989"
  sha256 arm:   "5af2050ec7e48844ab33d43063b1027eebff37a9848209dddd7edcc1724a7d5a",
         intel: "c152401d10274dbf68de29f94ee2423400e482bb1f9b6ca808eca34d982f179e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
