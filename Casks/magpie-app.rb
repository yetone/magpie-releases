cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2755"
  sha256 arm:   "098fec82976b601ccaa8fbd623c31593d4fa0be11717c5fae32a72c367d04795",
         intel: "dad919c1765befdd0c7df7dc58a41923d4bfc757dc613894ee8d3d72473d27f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
