cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4585"
  sha256 arm:   "44585fb1ce10cafa72799bced3bf5df754ba4c8cb21370a33540b5428c2c19d1",
         intel: "5734d7ebaead4acfea466d5bff600db1d2a7f2d1484377bebcede708b8981a93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
