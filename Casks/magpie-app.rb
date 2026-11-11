cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3803"
  sha256 arm:   "c902684843130f988427df8d9bbd5468800f7d61ea5f1b116918d8d1ed330ed2",
         intel: "ef4e717809464ecf0946a9ef54551e4fe5e164261afd75d8bfeb9f468226e917"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
