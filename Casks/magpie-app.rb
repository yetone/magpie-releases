cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2651"
  sha256 arm:   "68f1cd50027bc6452aafa7d1fbdc9b5d191d58217fa2f38c8e5b73e66749924a",
         intel: "ed987192eb6106ff04a9ce302d17e087f5da762f790366c433ba1ef9264cd878"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
