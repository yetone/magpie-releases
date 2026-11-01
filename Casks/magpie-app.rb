cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2628"
  sha256 arm:   "f2182aa48a00465544605c25000f09e3de77b2158d9b92759b0e4c402ab8f185",
         intel: "780e3f8d39c56075d734fb16968013099b103d42e41d274a9b17e6af1d4ff702"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
