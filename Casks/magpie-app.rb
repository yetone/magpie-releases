cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2674"
  sha256 arm:   "d9f9e4001736b43fe406129322ab2a8f74d6d398fd17ef25bf02df40f1d3e605",
         intel: "42662f381b7c39f4e3449d185b95bbba64617fe834f19552022e1778ac27fa01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
