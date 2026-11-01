cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2656"
  sha256 arm:   "c7fa49e7352d374a624366608e14495607adda861dbdb6842771918e041734c1",
         intel: "100e0f2e9734207ee4c32f90f75a887155d11fc11ab9baa33559897c8e36ee93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
