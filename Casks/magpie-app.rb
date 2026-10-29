cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2027"
  sha256 arm:   "fbbab95c61edf0861f498c8551639a6de6a71750d2adee3e221c9f7c1d4859e2",
         intel: "dde7b4a7f70448fd8ae57e664e8d895633de49c8483f003f7ffab97a489815b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
