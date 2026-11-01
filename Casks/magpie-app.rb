cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2534"
  sha256 arm:   "51403554fff1ff180388e722d96f11ed27dce0cd58a82f6f3bae3321f9795614",
         intel: "953c9ac56d3322397b5f80afac15fb6e0f20eb90da241b978736e81cd8c1f24c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
