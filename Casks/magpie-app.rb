cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3215"
  sha256 arm:   "c3e3732fce722755482f8aac792bc7ec19fcf694684e00aabe85e311504f7544",
         intel: "1a9635178bf50f47fd7a6575e8fa2a783c9525aa4d34221e4fca85649e7e56a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
