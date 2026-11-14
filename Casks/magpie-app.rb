cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4156"
  sha256 arm:   "848a5832b6eceb45311e5f43dccebadd13c871cad042713fea65695427f2d9e0",
         intel: "1b433d3be040faa7b7bff94584e888a67a94fd1d62570c26f53dfac3aaf5dd69"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
