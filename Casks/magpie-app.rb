cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4457"
  sha256 arm:   "81a3ea15e7e97ea894f28bb26491969d9bffa7ae6c3ce6c81b2a0c465da29877",
         intel: "0b1268c36c268439b3f5502ebff4d006842c4732861774f9270d65596acbfa36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
