cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4646"
  sha256 arm:   "1399eda54a107283d67be2c794c1dd6eacc142711b77841f9b5954c36126ede6",
         intel: "33f3d5cfcb8d448a6e492725ba025461db096343fe1fd5ee97fcf74363313606"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
