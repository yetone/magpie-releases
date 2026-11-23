cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4688"
  sha256 arm:   "282c9cd5b915421fa09d20f86c33a011009d462bac9567bebd9d3eed60818642",
         intel: "c5f0043deb6e1bc407364b0715b00f4b837b968795a169be232d23ed0e69087c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
