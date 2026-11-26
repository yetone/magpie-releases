cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4887"
  sha256 arm:   "fb017d8c0edc7a94c0c41ddd192a1b747daffd17a467b36ac9576718203ccf2b",
         intel: "5d89a806b5c953a7bdae6245fc7310513574903c28653af9491c8237c1ef3202"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
