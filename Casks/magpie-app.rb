cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1075"
  sha256 arm:   "82aa9ab936e10269888ea8192afebbd49e8ef1ffd74c817cb452d37b511c982e",
         intel: "aea6923176715c9ff7334a98db08c138e40736f832e6a1fdf471c3f6c1b58748"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
