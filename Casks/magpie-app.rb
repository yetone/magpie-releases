cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.991"
  sha256 arm:   "3a07a9e244d31533f351100e2c24300863bc5a5415dd7620cf804898c2c0c43f",
         intel: "1b5fb783a42684d5dba7fa7b46ee45e9953e3bb65e6eadd0884616b5b277314c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
