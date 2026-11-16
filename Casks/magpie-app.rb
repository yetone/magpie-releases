cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4290"
  sha256 arm:   "dea9c68aa227f8f5dd1af0ceff90ce674f1c1538cf43a05c6856852ae79083cc",
         intel: "f77bf16b36b2c197f594a743f64ed262f4bd41dfaac2e646787682d86e713d71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
