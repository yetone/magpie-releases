cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2251"
  sha256 arm:   "e0cefdc9ff921b11274e3cf00fd6524df260ce3c4614cd00df990807f9818e38",
         intel: "36a7647d35e1236822dc3617880de313e6f7e89eae6a47a4e85ac64da51ff287"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
