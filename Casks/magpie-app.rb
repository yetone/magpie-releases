cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2376"
  sha256 arm:   "42736ed61fa87768707c92fb1164001cbd23e07d8611d3bf73ac7e48a0d7c180",
         intel: "3281271bc7a71eba8ceadce2de2bf81c2159cc276e13e1e625ed2fcd678ad59b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
