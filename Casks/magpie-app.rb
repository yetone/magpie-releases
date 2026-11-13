cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3969"
  sha256 arm:   "75c57825769d40260b722019c534a7a71710a0ca8a5e2f22639a8f2e2ac50f67",
         intel: "36eaef6607d174ea5bb34aac68837037b13271d99bbba11c6371149ee480a2b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
