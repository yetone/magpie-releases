cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4868"
  sha256 arm:   "5f15244fc3f4b75bdc4c094a70b90bad7a259efbfe8d857f92f8d8baf590e475",
         intel: "d851ac9705c4bb4cbedf43dcc8ed4774ba681494ee58a11bbba80c6fe6205b2e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
