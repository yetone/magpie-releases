cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2614"
  sha256 arm:   "1427a29ca9b6e6b02f3ad2827fc6d735ec799ba06dcabfd490fdc75a2ac9e2b8",
         intel: "d98c628d14a2438ca8e534f3831e6eab9b158744517dbe7574f42e089b6d0843"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
