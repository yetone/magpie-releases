cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1999"
  sha256 arm:   "018e42aea21d2cea93f2104849cc4da7c7e348a0505c261e6f822ed8ad015f09",
         intel: "c30e134ed93ca64a52a0ba0fbd132dfd1db78ce2a178fbb0039d2b3c1fb2e973"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
