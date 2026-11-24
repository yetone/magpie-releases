cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4765"
  sha256 arm:   "f0376a33ca28406cc875627b35af005e5c4b742f179c45784345c5c960cfb686",
         intel: "b8884b7194c0935bb62bf7e56aa069b9d6196b05f31c3868a485568dd8bdbf48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
