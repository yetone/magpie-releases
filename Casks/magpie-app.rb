cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2384"
  sha256 arm:   "f72b28bc8511f3c1da939375fad6e327cedd33f30eee8145fe672be1bf2215cb",
         intel: "2ccd989aacad25fe50e272c7932cefaa9d6a4eec06e9fd2361e59e0f98339acc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
