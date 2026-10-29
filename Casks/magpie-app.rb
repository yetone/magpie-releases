cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1989"
  sha256 arm:   "373412db605eeb0ab739a855e69c755d492165d04d805ad2001d446b83ef5f53",
         intel: "52f1846827764d9a28b192e3a8d55314373f9570af874588822b068c7ea02092"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
