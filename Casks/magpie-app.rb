cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2159"
  sha256 arm:   "dde753e549ad6411af08b44d008557eabe346fd9ba27760977d94c6a7421147f",
         intel: "6897ad2be023c44a6e251c3e4508ef57b80152ed29175dd834466100311327b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
