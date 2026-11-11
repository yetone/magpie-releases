cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3796"
  sha256 arm:   "41a0bcd1f564d17437e3af534d26f61e7e70958e74d68ac8c2e14038f413eed6",
         intel: "d871356f484d0a6edda3bfe90530733ce9daaf10596e4d1da6353591f92b3df2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
