cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2464"
  sha256 arm:   "a0e587fe576e5ccc236c66f41d18b119b240b299d82bf19a185e37e97622dd5c",
         intel: "db4b4739f1a83e3dffafcce06ea45dc0fd6bd9692adbada0255e0825a49d0dbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
