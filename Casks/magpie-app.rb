cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3490"
  sha256 arm:   "4630146998519f8e52d2860cb8372671a35aff339ab914980ccb1a8c942c5e7c",
         intel: "076dfd919b197e5360733e14c8096d545086b0d5b78f9f236cb339feb7011b89"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
