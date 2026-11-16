cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4300"
  sha256 arm:   "b64a64ef56cb7344c0b5b7fab10a98d8c031022625b2b97407962c63555a481e",
         intel: "e565acca6b4bfec6816c97b05f0d935aa071368c5be8f7bbd0a0e945789b89cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
