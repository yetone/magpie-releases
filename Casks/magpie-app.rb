cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2219"
  sha256 arm:   "b3ac4a4ef3a3755bb66af14e8bd6203f3b2beab106110bad67d4236fcf7e4349",
         intel: "c9f27f36aaebf22df1dd47bdc2480837d4648580ac3412269e262e97978b04b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
