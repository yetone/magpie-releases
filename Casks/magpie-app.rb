cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2913"
  sha256 arm:   "48925bcd7ac233285485ed675fd8c798e33a876f65d827dba66f09d91731f02e",
         intel: "b5ec63727fd52d0d279d9ae38a685a2fc1fccf38ce910dadc6a2b484ddfe0722"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
