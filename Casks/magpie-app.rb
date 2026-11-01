cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2510"
  sha256 arm:   "46a098bd79955fd30e6b8f872f90bb893ab6ad1db8deb2d2820c28256fe285aa",
         intel: "301b94a5a2019466fa65011ba94b85db64f06761186917856ba8a216edba9881"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
