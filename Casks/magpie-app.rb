cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4850"
  sha256 arm:   "bcd6d37575628858547890f2757e45beca4abd9817ed36b6ba4ce36ade97737a",
         intel: "f0e0c8b92e7150908cfaad6fdf8822bf69e924126dab46bce365ee659eb20c46"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
