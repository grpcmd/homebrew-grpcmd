cask "grpcmd-gui" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "f25e94f2c48d41667dcffc09cf96eed1f49a32ecad7b96292224ccdfcd464a67",
         intel: "9db44e406e380bed90b2a3bc133897c32a685cf42e918b355b8ca58513f15dde"

  url "https://github.com/grpcmd/grpcmd-gui/releases/download/v#{version}/grpcmd-gui_#{version}_darwin-#{arch}-installer.dmg"
  name "grpcmd-gui"
  desc "gRPC GUI"
  homepage "https://grpc.md"

  depends_on macos: ">= :catalina"

  app "grpcmd.app"

  zap trash: [
    "~/Library/Caches/md.grpc.gui",
    "~/Library/WebKit/md.grpc.gui",
  ]
end