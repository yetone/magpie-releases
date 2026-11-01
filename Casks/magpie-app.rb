cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2591"
  sha256 arm:   "579d1954b3a0f2b6c791a936a4e4d567f4c1fdb2264d70019eb7add50f591423",
         intel: "6c66779da17ebda3723868a6d4fce86f761da74bf230ce0f0b140a59fecbebf7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
