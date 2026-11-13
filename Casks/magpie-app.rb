cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4043"
  sha256 arm:   "fe01b03834c088694f9240c31182b68bca75f51ea357b6045b5b5dede2c2208a",
         intel: "662ce3a2ed401435d9a11b0dc2f8310d67acfe378f525b899e37d5abec25dc09"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
