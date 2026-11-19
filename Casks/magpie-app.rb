cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4543"
  sha256 arm:   "f6b091f883a55e8dea5feb6254de948c79e6a7a09b2bc383505afa0714ee6842",
         intel: "7e54da9160a13c4e828b07fd056d23c73d8bebf0f583514dc130adb2160c76c8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
