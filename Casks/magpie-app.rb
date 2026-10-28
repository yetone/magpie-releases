cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1944"
  sha256 arm:   "87fc38ca082ad91c773f02f376cc4c55eab1c2c30a56c1eae5a7046e9ff960d5",
         intel: "3d4bd28e04139c1182699a84533ef2dd80b5fa0cd049199df534cd1163425b0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
