cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3047"
  sha256 arm:   "21a930c11587eefee9f287237fd6dd7c6358c00e691a32be20923cc882143550",
         intel: "23e3cc7e1666c2f3d7f92c82f2e89e9612149567bd6f5cf58916b17ff4652bbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
